.class public final synthetic Lcom/android/server/am/-$$Lambda$gATL8uvTPRd405IfefK1RL9bNqA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/display/DisplayManagerInternal;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/display/DisplayManagerInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$gATL8uvTPRd405IfefK1RL9bNqA;->f$0:Landroid/hardware/display/DisplayManagerInternal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$gATL8uvTPRd405IfefK1RL9bNqA;->f$0:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    return-void
.end method
