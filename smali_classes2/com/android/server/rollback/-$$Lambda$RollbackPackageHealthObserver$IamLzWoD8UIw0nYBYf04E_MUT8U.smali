.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$IamLzWoD8UIw0nYBYf04E_MUT8U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

.field public final synthetic f$1:Landroid/content/rollback/RollbackInfo;

.field public final synthetic f$2:Landroid/content/rollback/RollbackManager;

.field public final synthetic f$3:Landroid/content/pm/VersionedPackage;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$IamLzWoD8UIw0nYBYf04E_MUT8U;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iput-object p2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$IamLzWoD8UIw0nYBYf04E_MUT8U;->f$1:Landroid/content/rollback/RollbackInfo;

    iput-object p3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$IamLzWoD8UIw0nYBYf04E_MUT8U;->f$2:Landroid/content/rollback/RollbackManager;

    iput-object p4, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$IamLzWoD8UIw0nYBYf04E_MUT8U;->f$3:Landroid/content/pm/VersionedPackage;

    iput p5, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$IamLzWoD8UIw0nYBYf04E_MUT8U;->f$4:I

    iput-object p6, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$IamLzWoD8UIw0nYBYf04E_MUT8U;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$IamLzWoD8UIw0nYBYf04E_MUT8U;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iget-object v1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$IamLzWoD8UIw0nYBYf04E_MUT8U;->f$1:Landroid/content/rollback/RollbackInfo;

    iget-object v2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$IamLzWoD8UIw0nYBYf04E_MUT8U;->f$2:Landroid/content/rollback/RollbackManager;

    iget-object v3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$IamLzWoD8UIw0nYBYf04E_MUT8U;->f$3:Landroid/content/pm/VersionedPackage;

    iget v4, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$IamLzWoD8UIw0nYBYf04E_MUT8U;->f$4:I

    iget-object v5, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$IamLzWoD8UIw0nYBYf04E_MUT8U;->f$5:Ljava/lang/String;

    move-object v6, p1

    check-cast v6, Landroid/content/Intent;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->lambda$rollbackPackage$1$RollbackPackageHealthObserver(Landroid/content/rollback/RollbackInfo;Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;ILjava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
