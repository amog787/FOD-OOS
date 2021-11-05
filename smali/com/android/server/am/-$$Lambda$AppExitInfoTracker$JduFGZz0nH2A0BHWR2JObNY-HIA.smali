.class public final synthetic Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$JduFGZz0nH2A0BHWR2JObNY-HIA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$JduFGZz0nH2A0BHWR2JObNY-HIA;->f$0:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$JduFGZz0nH2A0BHWR2JObNY-HIA;->f$0:Landroid/util/ArraySet;

    invoke-static {v0, p1}, Lcom/android/server/am/AppExitInfoTracker;->lambda$pruneAnrTracesIfNecessaryLocked$12(Landroid/util/ArraySet;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
