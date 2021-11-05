.class public interface abstract Landroid/hardware/light/ILights;
.super Ljava/lang/Object;
.source "ILights.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/light/ILights$Stub;,
        Landroid/hardware/light/ILights$Default;
    }
.end annotation


# static fields
.field public static final HASH:Ljava/lang/String; = "33fec8401b6e66bddaeff251e1a2a0f4fa0d3bee"

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLights()[Landroid/hardware/light/HwLight;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setLightState(ILandroid/hardware/light/HwLightState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
