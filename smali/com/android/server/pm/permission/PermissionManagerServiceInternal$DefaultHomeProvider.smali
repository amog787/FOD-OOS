.class public interface abstract Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;
.super Ljava/lang/Object;
.source "PermissionManagerServiceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DefaultHomeProvider"
.end annotation


# virtual methods
.method public abstract getDefaultHome(I)Ljava/lang/String;
.end method

.method public abstract setDefaultHomeAsync(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
