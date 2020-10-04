.class public final synthetic Lcom/android/server/trust/-$$Lambda$TrustManagerService$fEkVwjahpkATIGtXudiFOG8VXOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/trust/-$$Lambda$TrustManagerService$fEkVwjahpkATIGtXudiFOG8VXOo;->f$0:Lcom/android/server/trust/TrustManagerService;

    return-void
.end method


# virtual methods
.method public final onEscrowTokenActivated(JI)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/-$$Lambda$TrustManagerService$fEkVwjahpkATIGtXudiFOG8VXOo;->f$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/trust/TrustManagerService;->lambda$addEscrowToken$0$TrustManagerService(JI)V

    return-void
.end method
