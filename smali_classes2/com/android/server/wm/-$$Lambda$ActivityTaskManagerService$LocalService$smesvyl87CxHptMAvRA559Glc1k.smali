.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$LocalService$smesvyl87CxHptMAvRA559Glc1k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

.field private final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$LocalService$smesvyl87CxHptMAvRA559Glc1k;->f$0:Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$LocalService$smesvyl87CxHptMAvRA559Glc1k;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$LocalService$smesvyl87CxHptMAvRA559Glc1k;->f$0:Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$LocalService$smesvyl87CxHptMAvRA559Glc1k;->f$1:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->lambda$updateTopComponentForFactoryTest$2$ActivityTaskManagerService$LocalService(Ljava/lang/CharSequence;)V

    return-void
.end method
