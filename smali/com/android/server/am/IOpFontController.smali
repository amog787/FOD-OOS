.class public interface abstract Lcom/android/server/am/IOpFontController;
.super Ljava/lang/Object;
.source "IOpFontController.java"


# virtual methods
.method public abstract changeFontForUser(II)V
.end method

.method public abstract dumpInfos()V
.end method

.method public abstract getFontIDsForUser(I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleUserChange()V
.end method

.method public abstract initForFontCtrl(Landroid/content/Context;)V
.end method

.method public abstract onFactoryReset()V
.end method

.method public abstract onOTACompleted()V
.end method

.method public abstract onPreparingForOTA()V
.end method
