.class interface abstract Lcom/android/server/role/FinancialSmsManager$Command;
.super Ljava/lang/Object;
.source "FinancialSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/role/FinancialSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Command"
.end annotation


# virtual methods
.method public abstract run(Landroid/service/sms/IFinancialSmsService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
