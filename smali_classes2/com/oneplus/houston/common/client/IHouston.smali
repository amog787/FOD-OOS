.class public interface abstract Lcom/oneplus/houston/common/client/IHouston;
.super Ljava/lang/Object;
.source "IHouston.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.common.client.IHouston"

.field public static final ON_RESULT_TRANSACTION:I = 0xc

.field public static final ON_SEND_COMMAND_DATA_TRANSACTION:I = 0x3

.field public static final ON_SEND_COMMAND_INTENT_TRANSACTION:I = 0x2

.field public static final ON_SEND_COMMAND_TRANSACTION:I = 0x1


# virtual methods
.method public abstract onResult(Lcom/oneplus/houston/common/client/Event;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendCommand(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendCommand(Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendCommand(Lcom/oneplus/houston/common/client/Event;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
