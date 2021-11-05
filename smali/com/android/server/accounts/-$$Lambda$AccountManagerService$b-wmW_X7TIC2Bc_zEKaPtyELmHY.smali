.class public final synthetic Lcom/android/server/accounts/-$$Lambda$AccountManagerService$b-wmW_X7TIC2Bc_zEKaPtyELmHY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

.field public final synthetic f$1:Landroid/accounts/Account;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$b-wmW_X7TIC2Bc_zEKaPtyELmHY;->f$0:Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    iput-object p2, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$b-wmW_X7TIC2Bc_zEKaPtyELmHY;->f$1:Landroid/accounts/Account;

    iput p3, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$b-wmW_X7TIC2Bc_zEKaPtyELmHY;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$b-wmW_X7TIC2Bc_zEKaPtyELmHY;->f$0:Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    iget-object v1, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$b-wmW_X7TIC2Bc_zEKaPtyELmHY;->f$1:Landroid/accounts/Account;

    iget v2, p0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$b-wmW_X7TIC2Bc_zEKaPtyELmHY;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->lambda$revokeAppPermission$4(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    return-void
.end method
