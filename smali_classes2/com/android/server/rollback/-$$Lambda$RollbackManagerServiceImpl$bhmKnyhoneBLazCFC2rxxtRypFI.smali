.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$bhmKnyhoneBLazCFC2rxxtRypFI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/pm/ParceledListSlice;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$bhmKnyhoneBLazCFC2rxxtRypFI;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iput p2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$bhmKnyhoneBLazCFC2rxxtRypFI;->f$1:I

    iput-object p3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$bhmKnyhoneBLazCFC2rxxtRypFI;->f$2:Landroid/content/pm/ParceledListSlice;

    iput-object p4, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$bhmKnyhoneBLazCFC2rxxtRypFI;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$bhmKnyhoneBLazCFC2rxxtRypFI;->f$4:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$bhmKnyhoneBLazCFC2rxxtRypFI;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iget v1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$bhmKnyhoneBLazCFC2rxxtRypFI;->f$1:I

    iget-object v2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$bhmKnyhoneBLazCFC2rxxtRypFI;->f$2:Landroid/content/pm/ParceledListSlice;

    iget-object v3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$bhmKnyhoneBLazCFC2rxxtRypFI;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$bhmKnyhoneBLazCFC2rxxtRypFI;->f$4:Landroid/content/IntentSender;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$commitRollback$0$RollbackManagerServiceImpl(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V

    return-void
.end method
