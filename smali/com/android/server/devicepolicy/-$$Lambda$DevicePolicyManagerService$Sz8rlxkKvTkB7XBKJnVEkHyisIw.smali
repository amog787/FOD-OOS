.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$Sz8rlxkKvTkB7XBKJnVEkHyisIw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$Sz8rlxkKvTkB7XBKJnVEkHyisIw;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$Sz8rlxkKvTkB7XBKJnVEkHyisIw;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$isOverrideApnEnabled$103$DevicePolicyManagerService()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
