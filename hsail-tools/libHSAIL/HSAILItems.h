// University of Illinois/NCSA
// Open Source License
//
// Copyright (c) 2013, Advanced Micro Devices, Inc.
// All rights reserved.
//
// Developed by:
//
//     HSA Team
//
//     Advanced Micro Devices, Inc
//
//     www.amd.com
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of
// this software and associated documentation files (the "Software"), to deal with
// the Software without restriction, including without limitation the rights to
// use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
// of the Software, and to permit persons to whom the Software is furnished to do
// so, subject to the following conditions:
//
//     * Redistributions of source code must retain the above copyright notice,
//       this list of conditions and the following disclaimers.
//
//     * Redistributions in binary form must reproduce the above copyright notice,
//       this list of conditions and the following disclaimers in the
//       documentation and/or other materials provided with the distribution.
//
//     * Neither the names of the LLVM Team, University of Illinois at
//       Urbana-Champaign, nor the names of its contributors may be used to
//       endorse or promote products derived from this Software without specific
//       prior written permission.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
// FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
// CONTRIBUTORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS WITH THE
// SOFTWARE.
#pragma once
#ifndef INCLUDED_HSAIL_ITEMS_H
#define INCLUDED_HSAIL_ITEMS_H

#include "HSAILItemBase.h"
#include "HSAILConvertors.h"
#include "HSAILFloats.h"

namespace HSAIL_ASM {

class DirectiveLabel;
class DirectiveLabelTargets;
typedef TrailingRefs <
    DirectiveLabelTargets,
    DirectiveLabel,
    offsetof(Brig::BrigDirectiveLabelTargets, labels)
> LabelTargetsList;

class DirectiveLabelInit;
typedef TrailingRefs <
    DirectiveLabelInit,
    DirectiveLabel,
    offsetof(Brig::BrigDirectiveLabelInit, labels)
> LabelInitList;



class OperandList;
typedef TrailingRefs<
    OperandList,
    Directive,
    offsetof(Brig::BrigOperandList, elements)
> RefList;

class OperandArgumentList;
class DirectiveVariable;
typedef TrailingRefs<
    OperandArgumentList,
    DirectiveVariable,
    offsetof(Brig::BrigOperandArgumentList, elements)
> ArgumentRefList;

class OperandFunctionList;
class DirectiveFunction;
typedef TrailingRefs<
    OperandFunctionList,
    DirectiveFunction,
    offsetof(Brig::BrigOperandFunctionList, elements)
> FunctionRefList;

class OperandVector;
typedef TrailingRefs<
    OperandVector,
    Operand,
    offsetof(Brig::BrigOperandVector, operands)
> VectorOperandList;

class DirectiveControl;
class Operand;
typedef TrailingRefs<
    DirectiveControl,
    Operand,
    offsetof(Brig::BrigDirectiveControl, values)
> ControlValues;


class DirectiveSignature;
class DirectiveSignatureArgument;
class DirectiveSignatureArguments;


class DirectiveImageInit;
class DirectiveImageProperties;
typedef TrailingRefs<
    DirectiveImageInit,
    DirectiveImageProperties,
    offsetof(Brig::BrigDirectiveImageInit, images)
> ImageInitList;

class DirectiveSamplerInit;
class DirectiveSamplerProperties;
typedef TrailingRefs<
    DirectiveSamplerInit,
    DirectiveSamplerProperties,
    offsetof(Brig::BrigDirectiveSamplerInit, samplers)
> SamplerInitList;

class DirectiveOpaqueInit;
typedef TrailingRefs<
    DirectiveOpaqueInit,
    Directive,
    offsetof(Brig::BrigDirectiveOpaqueInit, objects)
> OpaqueInitList;

#include "HSAILItems_gen.hpp"

class DirectiveSignatureArguments
{
    DirectiveSignature m_item;
public:
    DirectiveSignatureArguments(DirectiveSignature i) : m_item(i) {}
    void initBrig() {};

    enum ArgKind { Input, Output };

    DirectiveSignatureArgument addArg(ArgKind kind, Brig::BrigType16_t type, Optional<uint64_t> dim, Brig::BrigAlignment align = Brig::BRIG_ALIGNMENT_NONE) {
        unsigned const newNumElem = m_item.outCount() + m_item.inCount() + 1;
        unsigned const newNumBytes = offsetof(Brig::BrigDirectiveSignature, args) + newNumElem*sizeof(Brig::BrigDirectiveSignatureArgument);
        if (grow(m_item,newNumBytes)>=newNumBytes) {
            DirectiveSignatureArgument t = m_item.args(newNumElem-1);
            t.type()   = type;
            t.align()  = (align == Brig::BRIG_ALIGNMENT_NONE)? getNaturalAlignment(type) : align;
            t.modifier().linkage() = Brig::BRIG_LINKAGE_NONE;
            t.modifier().isConst() = false;
            t.modifier().isDeclaration() = true;
            if (dim.isInitialized()) {
                t.modifier().isArray()=true;
                t.modifier().isFlexArray()=dim.value()==0;
                t.dim() = dim.value();
            } else {
                t.modifier().isArray()=false;
                t.modifier().isFlexArray()=false;
                t.dim() = 0;
            }

            switch(kind) {
            case Input:  m_item.inCount() = m_item.inCount() + 1; break;
            case Output: assert(m_item.inCount()==0); m_item.outCount() = m_item.outCount() + 1; break;
            default: assert(false);
            }

            return t;
        }
        return DirectiveSignatureArgument();
    }
};

#include "HSAILItemImpls_gen.hpp"

#include "HSAILVisitItems_gen.hpp"

#include "HSAILItemUtils_gen.hpp"

// shortcut for "final" classes
template<typename RetType, typename Visitor, typename Item>
inline RetType dispatchByItemKind_gen(Item item, Visitor& vis) {
    return vis(item); // just self visit
}

template <typename RetType, typename Item, typename Visitor>
inline RetType dispatchByItemKind(Item item, Visitor& vis) {
    return dispatchByItemKind_gen<RetType,Visitor>(item,vis);
}

template <typename RetType, typename Item, typename Visitor>
inline RetType dispatchByItemKind(Item item, const Visitor& vis) {
    return dispatchByItemKind_gen<RetType,const Visitor>(item,vis);
}

template <typename Item, typename Visitor>
inline void dispatchByItemKind(Item item, Visitor& vis) {
    dispatchByItemKind_gen<void,Visitor>(item,vis);
}

template <typename Item, typename Visitor>
inline void dispatchByItemKind(Item item, const Visitor& vis) {
    dispatchByItemKind_gen<void,const Visitor>(item,vis);
}


// enumerateFieldsImpl is a level of indirection between
// enumerateFields and enumerateFields_gen to allow
// customized behaviour for specific items

// by default - just call enumerateFields_gen version
template <typename Visitor,typename Item>
inline void enumerateFieldsImpl(Item item, Visitor& vis) {
    enumerateFields_gen(item, vis);
}

// vvv overrides for specific items  vvv

template <typename Visitor>
class PassOperandImmedValueByType
{
    OperandImmed m_op;
    Visitor&     m_vis;
public:
    PassOperandImmedValueByType(OperandImmed item,Visitor& vis)
        : m_op(item), m_vis(vis) {}
    template <typename BrigType>
    void visit() {
        m_vis(m_op.valRef(reinterpret_cast<typename BrigType::CType*>(&m_op.brig()->bytes[0])),"value");
    }
    void visitNone(...) const {}
};

// OperandImmed: make a virtual "value" field that has ValRef<T> type where T is selected at runtime
// by OperandImmed::type
/*template <typename Visitor>
void enumerateFieldsImpl(OperandImmed op, Visitor& vis) {
    enumerateFields_gen(op, vis);
    PassOperandImmedValueByType<Visitor> passOperandImmedValueByType(op,vis);
    dispatchByType(op.type(),passOperandImmedValueByType);
}*/


template <typename Visitor>
class PassValuesByType
{
    DataItem m_data;
    Visitor& m_vis;
public:
    PassValuesByType(DataItem data,Visitor& vis)
        : m_data(data), m_vis(vis) {}
    template <typename BrigType>
    void visit() const {
        DataItemT< typename BrigType::CType > data = m_data;
        m_vis(data,"values");
    }
    void visitNone(...) const {}
};

// DirectiveVariableInit: values field has template parameter T which is selected at runtime
// by DirectiveVariableInit::type
template <typename Visitor>
void enumerateFieldsImpl(DirectiveVariableInit item, Visitor& vis) {
    enumerateFields_gen(item, vis);
    dispatchByType(item.type(),PassValuesByType<Visitor>(item.data(),vis));
}

// end of enumerateFieldsImpl overrides


template<class Visitor>
class FieldEnumerator {
    Visitor& vis;
public:
    FieldEnumerator(Visitor& vis_) : vis(vis_) { }
    template<typename Item>
    void operator()(Item obj) {
        enumerateFieldsImpl<Visitor>(obj, vis);
    }
};

// enumerateFields dispatches visitor to the actual item kind (like a dynamic_cast)
template <typename Item, typename Visitor>
inline void enumerateFields(Item item, Visitor& vis) {
    FieldEnumerator<Visitor> fieldEnum(vis);
    dispatchByItemKind(item,fieldEnum);
}

// version for const Visitor
template <typename Item, typename Visitor>
inline void enumerateFields(Item item, const Visitor& vis) {
    FieldEnumerator<const Visitor> fieldEnum(vis);
    dispatchByItemKind(item,fieldEnum);
}









void setImmed(OperandImmed op, const void * v, Brig::BrigType16_t type);

template <typename T>
void setImmed(OperandImmed op, T v);

template <typename T, size_t N>
void setImmed(OperandImmed op, const T (&v)[N]);

template <typename T> // this routine converts Value v to the requested brig type and save it into immediate
void setImmed(OperandImmed op, T v, Brig::BrigType16_t type);

template <typename T, size_t N>
inline void setImmed(OperandImmed op, const MySmallArray<T,N>& v) {
    setImmed(op, v.arrayType());
}


template <typename ReqBrigType, template<typename, typename> class Convertor>
class GetImmediate
{
    const void *m_bits;
public:
    GetImmediate(const void *bits) : m_bits(bits) {}

    template <typename SrcBrigType>
    typename ReqBrigType::CType visit() const {
        return convert< ReqBrigType, SrcBrigType, Convertor >(
		    *reinterpret_cast<const typename SrcBrigType::CType*>(m_bits) );
    }
    typename ReqBrigType::CType visitNone(unsigned /*type*/) const {
        return typename ReqBrigType::CType();
    }
};

template <typename ReqBrigType, template<typename, typename> class Convertor>
typename ReqBrigType::CType getImmValue(OperandImmed imm, unsigned opndType)
{
    assert(imm);
    assert(opndType != Brig::BRIG_TYPE_INVALID); // cannot find out operand type because of malformed instruction
    assert(opndType != Brig::BRIG_TYPE_NONE);    // operand cannot be immediate
    return dispatchByType<typename ReqBrigType::CType>(opndType, GetImmediate<ReqBrigType,Convertor>(&imm.brig()->bytes));
}

template <typename ReqBrigType, template<typename, typename> class Convertor>
typename ReqBrigType::CType getImmValue(Inst i, unsigned opndIndex, Brig::BrigMachineModel8_t machine=Brig::BRIG_MACHINE_SMALL)
{
    OperandImmed imm = i.operand(opndIndex);
    if (!imm) {
        assert(false);
        return typename ReqBrigType::CType();
    }
    unsigned const opndType = getOperandType(i, opndIndex, machine);
    return getImmValue<ReqBrigType, Convertor>(imm, opndType);
}

} // namespace HSAIL_ASM

#endif // INCLUDED_HSAIL_ITEMS_H
