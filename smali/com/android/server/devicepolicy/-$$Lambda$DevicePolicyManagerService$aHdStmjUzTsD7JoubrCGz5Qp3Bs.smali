.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$aHdStmjUzTsD7JoubrCGz5Qp3Bs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/content/pm/PackageManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$aHdStmjUzTsD7JoubrCGz5Qp3Bs;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$aHdStmjUzTsD7JoubrCGz5Qp3Bs;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$aHdStmjUzTsD7JoubrCGz5Qp3Bs;->f$2:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$aHdStmjUzTsD7JoubrCGz5Qp3Bs;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$aHdStmjUzTsD7JoubrCGz5Qp3Bs;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$aHdStmjUzTsD7JoubrCGz5Qp3Bs;->f$5:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$aHdStmjUzTsD7JoubrCGz5Qp3Bs;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$aHdStmjUzTsD7JoubrCGz5Qp3Bs;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$aHdStmjUzTsD7JoubrCGz5Qp3Bs;->f$2:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$aHdStmjUzTsD7JoubrCGz5Qp3Bs;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$aHdStmjUzTsD7JoubrCGz5Qp3Bs;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$aHdStmjUzTsD7JoubrCGz5Qp3Bs;->f$5:Landroid/content/pm/PackageManager;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$getPermissionGrantState$82$DevicePolicyManagerService(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
