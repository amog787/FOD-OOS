.class Landroid/net/ipmemorystore/OnL2KeyResponseListener$1;
.super Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;
.source "OnL2KeyResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ipmemorystore/OnL2KeyResponseListener;->toAIDL(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)Landroid/net/ipmemorystore/IOnL2KeyResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/net/ipmemorystore/OnL2KeyResponseListener;


# direct methods
.method constructor <init>(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Landroid/net/ipmemorystore/OnL2KeyResponseListener$1;->val$listener:Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "31826566143ef882d67fac9f24566f73df4907b4"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 46
    const/4 v0, 0x7

    return v0
.end method

.method public onL2KeyResponse(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;)V
    .locals 2
    .param p1, "statusParcelable"    # Landroid/net/ipmemorystore/StatusParcelable;
    .param p2, "l2Key"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Landroid/net/ipmemorystore/OnL2KeyResponseListener$1;->val$listener:Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    if-eqz v0, :cond_0

    .line 40
    new-instance v1, Landroid/net/ipmemorystore/Status;

    invoke-direct {v1, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    invoke-interface {v0, v1, p2}, Landroid/net/ipmemorystore/OnL2KeyResponseListener;->onL2KeyResponse(Landroid/net/ipmemorystore/Status;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method
