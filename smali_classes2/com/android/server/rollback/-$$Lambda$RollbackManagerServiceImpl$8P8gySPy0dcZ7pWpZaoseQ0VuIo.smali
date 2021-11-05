.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$8P8gySPy0dcZ7pWpZaoseQ0VuIo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;[IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$8P8gySPy0dcZ7pWpZaoseQ0VuIo;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$8P8gySPy0dcZ7pWpZaoseQ0VuIo;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$8P8gySPy0dcZ7pWpZaoseQ0VuIo;->f$2:[I

    iput p4, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$8P8gySPy0dcZ7pWpZaoseQ0VuIo;->f$3:I

    iput-object p5, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$8P8gySPy0dcZ7pWpZaoseQ0VuIo;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$8P8gySPy0dcZ7pWpZaoseQ0VuIo;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$8P8gySPy0dcZ7pWpZaoseQ0VuIo;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$8P8gySPy0dcZ7pWpZaoseQ0VuIo;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$8P8gySPy0dcZ7pWpZaoseQ0VuIo;->f$2:[I

    iget v3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$8P8gySPy0dcZ7pWpZaoseQ0VuIo;->f$3:I

    iget-object v4, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$8P8gySPy0dcZ7pWpZaoseQ0VuIo;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$8P8gySPy0dcZ7pWpZaoseQ0VuIo;->f$5:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$snapshotAndRestoreUserData$7$RollbackManagerServiceImpl(Ljava/lang/String;[IILjava/lang/String;I)V

    return-void
.end method
