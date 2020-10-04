.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$rzS754kbcJ1EWTdkahNgJUZSdjI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

.field private final synthetic f$1:Landroid/content/rollback/RollbackInfo;

.field private final synthetic f$2:Landroid/content/rollback/RollbackManager;

.field private final synthetic f$3:Landroid/content/pm/VersionedPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$rzS754kbcJ1EWTdkahNgJUZSdjI;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iput-object p2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$rzS754kbcJ1EWTdkahNgJUZSdjI;->f$1:Landroid/content/rollback/RollbackInfo;

    iput-object p3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$rzS754kbcJ1EWTdkahNgJUZSdjI;->f$2:Landroid/content/rollback/RollbackManager;

    iput-object p4, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$rzS754kbcJ1EWTdkahNgJUZSdjI;->f$3:Landroid/content/pm/VersionedPackage;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$rzS754kbcJ1EWTdkahNgJUZSdjI;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iget-object v1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$rzS754kbcJ1EWTdkahNgJUZSdjI;->f$1:Landroid/content/rollback/RollbackInfo;

    iget-object v2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$rzS754kbcJ1EWTdkahNgJUZSdjI;->f$2:Landroid/content/rollback/RollbackManager;

    iget-object v3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$rzS754kbcJ1EWTdkahNgJUZSdjI;->f$3:Landroid/content/pm/VersionedPackage;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->lambda$execute$0$RollbackPackageHealthObserver(Landroid/content/rollback/RollbackInfo;Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;Landroid/content/Intent;)V

    return-void
.end method
