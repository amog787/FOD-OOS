.class interface abstract Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;
.super Ljava/lang/Object;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/hal2/RadioModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AidlCallbackRunnable"
.end annotation


# virtual methods
.method public abstract run(Landroid/hardware/radio/ITunerCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
