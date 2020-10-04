.class public final synthetic Lcom/android/server/role/-$$Lambda$RoleManagerService$Stub$2DaS8GFEsxV7psuQ8OMLocv4QEY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field private final synthetic f$0:Landroid/telephony/IFinancialSmsCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/IFinancialSmsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$Stub$2DaS8GFEsxV7psuQ8OMLocv4QEY;->f$0:Landroid/telephony/IFinancialSmsCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$Stub$2DaS8GFEsxV7psuQ8OMLocv4QEY;->f$0:Landroid/telephony/IFinancialSmsCallback;

    invoke-static {v0, p1}, Lcom/android/server/role/RoleManagerService$Stub;->lambda$getSmsMessagesForFinancialApp$0(Landroid/telephony/IFinancialSmsCallback;Landroid/os/Bundle;)V

    return-void
.end method
