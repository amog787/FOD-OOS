.class public final synthetic Lcom/android/server/accounts/-$$Lambda$AccountManagerService$lqbNdAUKUSipmpqby9oIO8JlNTQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/accounts/AccountManagerService;

.field private final synthetic f$1:Landroid/accounts/Account;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$lqbNdAUKUSipmpqby9oIO8JlNTQ;->f$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p2, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$lqbNdAUKUSipmpqby9oIO8JlNTQ;->f$1:Landroid/accounts/Account;

    iput p3, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$lqbNdAUKUSipmpqby9oIO8JlNTQ;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$lqbNdAUKUSipmpqby9oIO8JlNTQ;->f$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$lqbNdAUKUSipmpqby9oIO8JlNTQ;->f$1:Landroid/accounts/Account;

    iget v2, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$lqbNdAUKUSipmpqby9oIO8JlNTQ;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->lambda$removeAccountInternal$2$AccountManagerService(Landroid/accounts/Account;I)V

    return-void
.end method
