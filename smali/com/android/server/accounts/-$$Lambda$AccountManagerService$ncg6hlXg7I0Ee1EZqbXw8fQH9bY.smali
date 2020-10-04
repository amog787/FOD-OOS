.class public final synthetic Lcom/android/server/accounts/-$$Lambda$AccountManagerService$ncg6hlXg7I0Ee1EZqbXw8fQH9bY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/accounts/AccountManagerService;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$ncg6hlXg7I0Ee1EZqbXw8fQH9bY;->f$0:Lcom/android/server/accounts/AccountManagerService;

    iput p2, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$ncg6hlXg7I0Ee1EZqbXw8fQH9bY;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$ncg6hlXg7I0Ee1EZqbXw8fQH9bY;->f$0:Lcom/android/server/accounts/AccountManagerService;

    iget v1, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$ncg6hlXg7I0Ee1EZqbXw8fQH9bY;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->lambda$onUnlockUser$1$AccountManagerService(I)V

    return-void
.end method
