.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:[I

.field private final synthetic f$3:I

.field private final synthetic f$4:J

.field private final synthetic f$5:Ljava/lang/String;

.field private final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;[IIJLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;->f$2:[I

    iput p4, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;->f$3:I

    iput-wide p5, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;->f$4:J

    iput-object p7, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;->f$5:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;->f$2:[I

    iget v3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;->f$3:I

    iget-wide v4, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;->f$4:J

    iget-object v6, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;->f$5:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;->f$6:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$snapshotAndRestoreUserData$10$RollbackManagerServiceImpl(Ljava/lang/String;[IIJLjava/lang/String;I)V

    return-void
.end method
