.class public final synthetic Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$8D9Zbki65ND_Q20M-Trexl6cHcQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$8D9Zbki65ND_Q20M-Trexl6cHcQ;->f$0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$8D9Zbki65ND_Q20M-Trexl6cHcQ;->f$0:Ljava/util/concurrent/CountDownLatch;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/android/server/policy/PermissionPolicyService;->lambda$grantOrUpgradeDefaultRuntimePermissionsIfNeeded$0(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V

    return-void
.end method
