.class public final synthetic Lcom/android/server/role/-$$Lambda$FinancialSmsManager$UHY1FCAaWVBjCaZaVTnVZ0IItrI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/role/FinancialSmsManager$Command;


# instance fields
.field private final synthetic f$0:Landroid/os/RemoteCallback;

.field private final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/role/-$$Lambda$FinancialSmsManager$UHY1FCAaWVBjCaZaVTnVZ0IItrI;->f$0:Landroid/os/RemoteCallback;

    iput-object p2, p0, Lcom/android/server/role/-$$Lambda$FinancialSmsManager$UHY1FCAaWVBjCaZaVTnVZ0IItrI;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run(Landroid/service/sms/IFinancialSmsService;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/role/-$$Lambda$FinancialSmsManager$UHY1FCAaWVBjCaZaVTnVZ0IItrI;->f$0:Landroid/os/RemoteCallback;

    iget-object v1, p0, Lcom/android/server/role/-$$Lambda$FinancialSmsManager$UHY1FCAaWVBjCaZaVTnVZ0IItrI;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1, p1}, Lcom/android/server/role/FinancialSmsManager;->lambda$getSmsMessages$0(Landroid/os/RemoteCallback;Landroid/os/Bundle;Landroid/service/sms/IFinancialSmsService;)V

    return-void
.end method
