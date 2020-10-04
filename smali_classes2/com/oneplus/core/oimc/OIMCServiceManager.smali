.class public Lcom/oneplus/core/oimc/OIMCServiceManager;
.super Ljava/lang/Object;
.source "OIMCServiceManager.java"

# interfaces
.implements Lcom/oneplus/core/oimc/IOIMCServiceManager;


# static fields
.field private static final CREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/core/oimc/IOIMCService;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_ONEPLUS:Z

.field public static final ONEPLUS_OIMC_SERVICE:Ljava/lang/String; = "oimc_service"

.field private static final TAG:Ljava/lang/String; = "OIMCServiceManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/core/oimc/OIMCServiceManager;->DEBUG_ONEPLUS:Z

    .line 37
    new-instance v0, Lcom/oneplus/core/oimc/OIMCServiceManager$1;

    invoke-direct {v0}, Lcom/oneplus/core/oimc/OIMCServiceManager$1;-><init>()V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCServiceManager;->CREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService()Lcom/oneplus/core/oimc/IOIMCService;
    .locals 1

    .line 34
    sget-object v0, Lcom/oneplus/core/oimc/OIMCServiceManager;->CREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/core/oimc/IOIMCService;

    return-object v0
.end method


# virtual methods
.method public addFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V
    .locals 3
    .param p1, "rule"    # Lcom/oneplus/core/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 58
    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    .line 59
    .local v0, "service":Lcom/oneplus/core/oimc/IOIMCService;
    if-eqz v0, :cond_0

    .line 61
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oneplus/core/oimc/IOIMCService;->addFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    goto :goto_1

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 66
    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_1
    return-void
.end method

.method public addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 3
    .param p1, "rule"    # Lcom/oneplus/core/oimc/OIMCRule;

    .line 87
    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    .line 88
    .local v0, "service":Lcom/oneplus/core/oimc/IOIMCService;
    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/oimc/IOIMCService;->addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    goto :goto_1

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 95
    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_1
    return-void
.end method

.method public getRemoteFuncConfig(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "fName"    # Ljava/lang/String;

    .line 186
    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    .line 187
    .local v0, "service":Lcom/oneplus/core/oimc/IOIMCService;
    if-eqz v0, :cond_0

    .line 189
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/oimc/IOIMCService;->getRemoteFuncConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 192
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 194
    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRemoteFuncStatus(Ljava/lang/String;)I
    .locals 3
    .param p1, "fName"    # Ljava/lang/String;

    .line 171
    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    .line 172
    .local v0, "service":Lcom/oneplus/core/oimc/IOIMCService;
    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/oimc/IOIMCService;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 177
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 179
    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public notifyModeChange(Ljava/lang/String;II)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "change"    # I
    .param p3, "reserved"    # I

    .line 129
    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    .line 130
    .local v0, "service":Lcom/oneplus/core/oimc/IOIMCService;
    if-eqz v0, :cond_0

    .line 132
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/oneplus/core/oimc/IOIMCService;->notifyModeChange(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    goto :goto_1

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 137
    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_1
    return-void
.end method

.method public registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V
    .locals 3
    .param p1, "fName"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    .line 143
    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    .line 144
    .local v0, "service":Lcom/oneplus/core/oimc/IOIMCService;
    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oneplus/core/oimc/IOIMCService;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    goto :goto_1

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 151
    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_1
    return-void
.end method

.method public removeFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V
    .locals 3
    .param p1, "rule"    # Lcom/oneplus/core/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 73
    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    .line 74
    .local v0, "service":Lcom/oneplus/core/oimc/IOIMCService;
    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oneplus/core/oimc/IOIMCService;->removeFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    goto :goto_1

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 81
    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_1
    return-void
.end method

.method public removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 3
    .param p1, "rule"    # Lcom/oneplus/core/oimc/OIMCRule;

    .line 101
    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    .line 102
    .local v0, "service":Lcom/oneplus/core/oimc/IOIMCService;
    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/oimc/IOIMCService;->removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    goto :goto_1

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 109
    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_1
    return-void
.end method

.method public runRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 3
    .param p1, "rule"    # Lcom/oneplus/core/oimc/OIMCRule;

    .line 115
    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    .line 116
    .local v0, "service":Lcom/oneplus/core/oimc/IOIMCService;
    if-eqz v0, :cond_0

    .line 118
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/oimc/IOIMCService;->runRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    goto :goto_1

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 123
    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_1
    return-void
.end method

.method public unRegisterRemoteAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "fName"    # Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    .line 158
    .local v0, "service":Lcom/oneplus/core/oimc/IOIMCService;
    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/oimc/IOIMCService;->unRegisterRemoteAction(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    goto :goto_1

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 165
    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_1
    return-void
.end method
