.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$qxl9oIFwPlFs_BOCz2kdHqQtB0U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$qxl9oIFwPlFs_BOCz2kdHqQtB0U;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$qxl9oIFwPlFs_BOCz2kdHqQtB0U;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->lambda$checkAndMitigateNativeCrashes$3$RollbackPackageHealthObserver()V

    return-void
.end method
