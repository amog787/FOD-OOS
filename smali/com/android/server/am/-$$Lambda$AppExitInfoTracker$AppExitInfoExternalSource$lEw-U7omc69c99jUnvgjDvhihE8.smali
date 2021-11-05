.class public final synthetic Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoExternalSource$lEw-U7omc69c99jUnvgjDvhihE8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BiConsumer;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoExternalSource$lEw-U7omc69c99jUnvgjDvhihE8;->f$0:Ljava/util/function/BiConsumer;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoExternalSource$lEw-U7omc69c99jUnvgjDvhihE8;->f$1:I

    iput p3, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoExternalSource$lEw-U7omc69c99jUnvgjDvhihE8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoExternalSource$lEw-U7omc69c99jUnvgjDvhihE8;->f$0:Ljava/util/function/BiConsumer;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoExternalSource$lEw-U7omc69c99jUnvgjDvhihE8;->f$1:I

    iget v2, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoExternalSource$lEw-U7omc69c99jUnvgjDvhihE8;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->lambda$onProcDied$0(Ljava/util/function/BiConsumer;II)V

    return-void
.end method
