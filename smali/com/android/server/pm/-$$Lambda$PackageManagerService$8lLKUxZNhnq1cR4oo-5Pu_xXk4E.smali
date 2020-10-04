.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$8lLKUxZNhnq1cR4oo-5Pu_xXk4E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/AppOpsManager;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/AppOpsManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8lLKUxZNhnq1cR4oo-5Pu_xXk4E;->f$0:Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8lLKUxZNhnq1cR4oo-5Pu_xXk4E;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8lLKUxZNhnq1cR4oo-5Pu_xXk4E;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8lLKUxZNhnq1cR4oo-5Pu_xXk4E;->f$0:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8lLKUxZNhnq1cR4oo-5Pu_xXk4E;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$8lLKUxZNhnq1cR4oo-5Pu_xXk4E;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->lambda$resetUserChangesToRuntimePermissionsAndFlagsLPw$21(Landroid/app/AppOpsManager;Ljava/lang/String;I)V

    return-void
.end method
