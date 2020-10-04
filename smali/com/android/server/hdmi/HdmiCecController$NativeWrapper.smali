.class public interface abstract Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
.super Ljava/lang/Object;
.source "HdmiCecController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "NativeWrapper"
.end annotation


# virtual methods
.method public abstract nativeAddLogicalAddress(JI)I
.end method

.method public abstract nativeClearLogicalAddress(J)V
.end method

.method public abstract nativeEnableAudioReturnChannel(JIZ)V
.end method

.method public abstract nativeGetPhysicalAddress(J)I
.end method

.method public abstract nativeGetPortInfos(J)[Landroid/hardware/hdmi/HdmiPortInfo;
.end method

.method public abstract nativeGetVendorId(J)I
.end method

.method public abstract nativeGetVersion(J)I
.end method

.method public abstract nativeInit(Lcom/android/server/hdmi/HdmiCecController;Landroid/os/MessageQueue;)J
.end method

.method public abstract nativeIsConnected(JI)Z
.end method

.method public abstract nativeSendCecCommand(JII[B)I
.end method

.method public abstract nativeSetLanguage(JLjava/lang/String;)V
.end method

.method public abstract nativeSetOption(JIZ)V
.end method
