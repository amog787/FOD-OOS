.class public Lcom/oneplus/core/oimc/IOIMCService$Default;
.super Ljava/lang/Object;
.source "IOIMCService.java"

# interfaces
.implements Lcom/oneplus/core/oimc/IOIMCService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/core/oimc/IOIMCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V
    .locals 0
    .param p1, "rule"    # Lcom/oneplus/core/oimc/OIMCRule;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 0
    .param p1, "rule"    # Lcom/oneplus/core/oimc/OIMCRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteFuncConfig(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "fName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteFuncStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "fName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public notifyModeChange(Ljava/lang/String;II)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "change"    # I
    .param p3, "reserved"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V
    .locals 0
    .param p1, "fName"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public removeFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V
    .locals 0
    .param p1, "rule"    # Lcom/oneplus/core/oimc/OIMCRule;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 0
    .param p1, "rule"    # Lcom/oneplus/core/oimc/OIMCRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public runRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 0
    .param p1, "rule"    # Lcom/oneplus/core/oimc/OIMCRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public unRegisterRemoteAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "fName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
