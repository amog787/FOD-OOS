.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$_CTueeoAyZZbpbCYMvJ3rbtIF94;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/rollback/RollbackManager;

.field public final synthetic f$1:Landroid/content/rollback/RollbackInfo;

.field public final synthetic f$2:Landroid/content/pm/VersionedPackage;

.field public final synthetic f$3:Lcom/android/server/rollback/LocalIntentReceiver;


# direct methods
.method public synthetic constructor <init>(Landroid/content/rollback/RollbackManager;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;Lcom/android/server/rollback/LocalIntentReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$_CTueeoAyZZbpbCYMvJ3rbtIF94;->f$0:Landroid/content/rollback/RollbackManager;

    iput-object p2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$_CTueeoAyZZbpbCYMvJ3rbtIF94;->f$1:Landroid/content/rollback/RollbackInfo;

    iput-object p3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$_CTueeoAyZZbpbCYMvJ3rbtIF94;->f$2:Landroid/content/pm/VersionedPackage;

    iput-object p4, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$_CTueeoAyZZbpbCYMvJ3rbtIF94;->f$3:Lcom/android/server/rollback/LocalIntentReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$_CTueeoAyZZbpbCYMvJ3rbtIF94;->f$0:Landroid/content/rollback/RollbackManager;

    iget-object v1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$_CTueeoAyZZbpbCYMvJ3rbtIF94;->f$1:Landroid/content/rollback/RollbackInfo;

    iget-object v2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$_CTueeoAyZZbpbCYMvJ3rbtIF94;->f$2:Landroid/content/pm/VersionedPackage;

    iget-object v3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$_CTueeoAyZZbpbCYMvJ3rbtIF94;->f$3:Lcom/android/server/rollback/LocalIntentReceiver;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->lambda$rollbackPackage$2(Landroid/content/rollback/RollbackManager;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;Lcom/android/server/rollback/LocalIntentReceiver;)V

    return-void
.end method
