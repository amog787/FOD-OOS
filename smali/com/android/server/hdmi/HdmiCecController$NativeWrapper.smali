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
.method public abstract nativeAddLogicalAddress(I)I
.end method

.method public abstract nativeClearLogicalAddress()V
.end method

.method public abstract nativeEnableAudioReturnChannel(IZ)V
.end method

.method public abstract nativeGetPhysicalAddress()I
.end method

.method public abstract nativeGetPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
.end method

.method public abstract nativeGetVendorId()I
.end method

.method public abstract nativeGetVersion()I
.end method

.method public abstract nativeInit()Ljava/lang/String;
.end method

.method public abstract nativeIsConnected(I)Z
.end method

.method public abstract nativeSendCecCommand(II[B)I
.end method

.method public abstract nativeSetLanguage(Ljava/lang/String;)V
.end method

.method public abstract nativeSetOption(IZ)V
.end method

.method public abstract setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V
.end method
