.class Landroid/net/ipmemorystore/OnStatusListener$1;
.super Landroid/net/ipmemorystore/IOnStatusListener$Stub;
.source "OnStatusListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ipmemorystore/OnStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnStatusListener;)Landroid/net/ipmemorystore/IOnStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/net/ipmemorystore/OnStatusListener;


# direct methods
.method constructor <init>(Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Landroid/net/ipmemorystore/OnStatusListener$1;->val$listener:Landroid/net/ipmemorystore/OnStatusListener;

    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "31826566143ef882d67fac9f24566f73df4907b4"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 45
    const/4 v0, 0x7

    return v0
.end method

.method public onComplete(Landroid/net/ipmemorystore/StatusParcelable;)V
    .locals 2
    .param p1, "statusParcelable"    # Landroid/net/ipmemorystore/StatusParcelable;

    .line 38
    iget-object v0, p0, Landroid/net/ipmemorystore/OnStatusListener$1;->val$listener:Landroid/net/ipmemorystore/OnStatusListener;

    if-eqz v0, :cond_0

    .line 39
    new-instance v1, Landroid/net/ipmemorystore/Status;

    invoke-direct {v1, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    invoke-interface {v0, v1}, Landroid/net/ipmemorystore/OnStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;)V

    .line 41
    :cond_0
    return-void
.end method
