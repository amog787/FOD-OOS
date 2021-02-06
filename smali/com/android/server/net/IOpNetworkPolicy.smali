.class public interface abstract Lcom/android/server/net/IOpNetworkPolicy;
.super Ljava/lang/Object;
.source "IOpNetworkPolicy.java"


# virtual methods
.method public abstract adjustUidRulesForStandby(ILandroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
.end method

.method public abstract dynamicallyConfigNetworkPolicyManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
.end method

.method public abstract handleMessage(Landroid/os/Message;)Z
.end method

.method public abstract ifEnableLogDump()Z
.end method

.method public abstract initInstance(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/content/Context;Landroid/os/Handler;)V
.end method

.method public abstract isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z
.end method

.method public abstract setDeviceIdleMode(Z)V
.end method

.method public abstract setEarlyRestriction()V
.end method
