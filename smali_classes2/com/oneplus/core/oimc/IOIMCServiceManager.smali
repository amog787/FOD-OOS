.class public interface abstract Lcom/oneplus/core/oimc/IOIMCServiceManager;
.super Ljava/lang/Object;
.source "IOIMCServiceManager.java"


# virtual methods
.method public abstract addFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V
.end method

.method public abstract addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
.end method

.method public abstract getRemoteFuncConfig(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getRemoteFuncStatus(Ljava/lang/String;)I
.end method

.method public abstract notifyModeChange(Ljava/lang/String;II)V
.end method

.method public abstract registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V
.end method

.method public abstract removeFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V
.end method

.method public abstract removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
.end method

.method public abstract runRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
.end method

.method public abstract unRegisterRemoteAction(Ljava/lang/String;)V
.end method
