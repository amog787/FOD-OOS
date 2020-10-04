.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$LEHWBvz4S-r8QDKRwIiJBgJlcRE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$LEHWBvz4S-r8QDKRwIiJBgJlcRE;->f$0:Lcom/android/server/ConnectivityService;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ConnectivityService$LEHWBvz4S-r8QDKRwIiJBgJlcRE;->f$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->lambda$factoryReset$6$ConnectivityService()V

    return-void
.end method
