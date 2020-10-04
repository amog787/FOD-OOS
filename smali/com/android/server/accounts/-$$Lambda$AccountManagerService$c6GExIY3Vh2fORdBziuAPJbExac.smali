.class public final synthetic Lcom/android/server/accounts/-$$Lambda$AccountManagerService$c6GExIY3Vh2fORdBziuAPJbExac;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$c6GExIY3Vh2fORdBziuAPJbExac;->f$0:Lcom/android/server/accounts/AccountManagerService;

    return-void
.end method


# virtual methods
.method public final onPermissionsChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$c6GExIY3Vh2fORdBziuAPJbExac;->f$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->lambda$new$0$AccountManagerService(I)V

    return-void
.end method
