.class Landroid/net/ipmemorystore/OnDeleteStatusListener$1;
.super Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;
.source "OnDeleteStatusListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ipmemorystore/OnDeleteStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnDeleteStatusListener;)Landroid/net/ipmemorystore/IOnStatusAndCountListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/net/ipmemorystore/OnDeleteStatusListener;


# direct methods
.method constructor <init>(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Landroid/net/ipmemorystore/OnDeleteStatusListener$1;->val$listener:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "31826566143ef882d67fac9f24566f73df4907b4"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 48
    const/4 v0, 0x7

    return v0
.end method

.method public onComplete(Landroid/net/ipmemorystore/StatusParcelable;I)V
    .locals 2
    .param p1, "statusParcelable"    # Landroid/net/ipmemorystore/StatusParcelable;
    .param p2, "deletedRecords"    # I

    .line 41
    iget-object v0, p0, Landroid/net/ipmemorystore/OnDeleteStatusListener$1;->val$listener:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    if-eqz v0, :cond_0

    .line 42
    new-instance v1, Landroid/net/ipmemorystore/Status;

    invoke-direct {v1, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    invoke-interface {v0, v1, p2}, Landroid/net/ipmemorystore/OnDeleteStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;I)V

    .line 44
    :cond_0
    return-void
.end method
