.class public Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;
.super Ljava/lang/Object;
.source "HoustonEventDispatcher.java"

# interfaces
.implements Lcom/oneplus/houston/common/client/IProcessEventCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "HoustonEventDispatcher"

.field private static sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;
    .locals 1

    .line 34
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->init()V

    .line 37
    :cond_0
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    return-object v0
.end method

.method public static init()V
    .locals 1

    .line 30
    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    invoke-direct {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;-><init>()V

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    .line 31
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "id"    # I
    .param p4, "process"    # Ljava/lang/String;
    .param p5, "pid"    # I
    .param p6, "flags"    # I
    .param p7, "reason"    # Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/oneplus/houston/common/client/Event;

    invoke-direct {v0}, Lcom/oneplus/houston/common/client/Event;-><init>()V

    .line 60
    .local v0, "event":Lcom/oneplus/houston/common/client/Event;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x1

    const-string v3, "func"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "uid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    const-string v2, "id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    const-string v2, "process"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "pid"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    const-string v2, "flags"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string v2, "reason"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/Event;->putExtras(Landroid/os/Bundle;)Lcom/oneplus/houston/common/client/Event;

    .line 70
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    .line 71
    return-void
.end method

.method public doInit(Lcom/oneplus/houston/common/client/parcel/InitArg;)V
    .locals 0
    .param p1, "arg"    # Lcom/oneplus/houston/common/client/parcel/InitArg;

    .line 120
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 139
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->isConnected()Z

    move-result v0

    return v0
.end method

.method public onEvent(Lcom/oneplus/houston/common/client/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/oneplus/houston/common/client/Event;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleProcessEvent event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/houston/common/client/Event;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonEventDispatcher"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    .line 47
    return-void
.end method

.method public onReceive(I)V
    .locals 1
    .param p1, "arg"    # I

    .line 41
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->scheduleProcessEvent(I)V

    .line 42
    return-void
.end method

.method public onReceive(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 50
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->scheduleProcessEvent(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/oneplus/houston/common/client/Event;

    invoke-direct {v0}, Lcom/oneplus/houston/common/client/Event;-><init>()V

    .line 79
    .local v0, "event":Lcom/oneplus/houston/common/client/Event;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x2

    const-string v3, "func"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    const-string v2, "reason"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/Event;->putExtras(Landroid/os/Bundle;)Lcom/oneplus/houston/common/client/Event;

    .line 84
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    .line 85
    return-void
.end method

.method public setAdj([I[I)V
    .locals 0
    .param p1, "pid"    # [I
    .param p2, "adj"    # [I

    .line 90
    return-void
.end method

.method public setFlags(III)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    .line 99
    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    new-instance v0, Lcom/oneplus/houston/common/client/Event;

    invoke-direct {v0}, Lcom/oneplus/houston/common/client/Event;-><init>()V

    .line 103
    .local v0, "event":Lcom/oneplus/houston/common/client/Event;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x5

    const-string v3, "func"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string v2, "flags"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    const-string v2, "mask"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/Event;->putExtras(Landroid/os/Bundle;)Lcom/oneplus/houston/common/client/Event;

    .line 109
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    .line 110
    return-void
.end method

.method public setOom([I[I[Ljava/lang/String;)V
    .locals 0
    .param p1, "pid"    # [I
    .param p2, "oomPid"    # [I
    .param p3, "oomString"    # [Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setPss(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "pss"    # I
    .param p3, "rss"    # I

    .line 115
    return-void
.end method

.method public updateScreenState(Z)V
    .locals 4
    .param p1, "isScreenOn"    # Z

    .line 124
    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    new-instance v0, Lcom/oneplus/houston/common/client/Event;

    invoke-direct {v0}, Lcom/oneplus/houston/common/client/Event;-><init>()V

    .line 128
    .local v0, "event":Lcom/oneplus/houston/common/client/Event;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x6

    const-string v3, "func"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string v2, "screen"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/Event;->putExtras(Landroid/os/Bundle;)Lcom/oneplus/houston/common/client/Event;

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isScreenOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HoustonEventDispatcher"

    invoke-static {v3, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    .line 134
    return-void
.end method
