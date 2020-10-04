.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field private final synthetic f$1:Landroid/content/Intent;

.field private final synthetic f$2:Lcom/android/server/rollback/RollbackData;

.field private final synthetic f$3:Landroid/content/IntentSender;

.field private final synthetic f$4:I

.field private final synthetic f$5:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/content/Intent;Lcom/android/server/rollback/RollbackData;Landroid/content/IntentSender;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;->f$2:Lcom/android/server/rollback/RollbackData;

    iput-object p4, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;->f$3:Landroid/content/IntentSender;

    iput p5, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;->f$4:I

    iput-object p6, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;->f$5:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;->f$2:Lcom/android/server/rollback/RollbackData;

    iget-object v3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;->f$3:Landroid/content/IntentSender;

    iget v4, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;->f$4:I

    iget-object v5, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;->f$5:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$commitRollbackInternal$3$RollbackManagerServiceImpl(Landroid/content/Intent;Lcom/android/server/rollback/RollbackData;Landroid/content/IntentSender;ILjava/util/List;)V

    return-void
.end method
