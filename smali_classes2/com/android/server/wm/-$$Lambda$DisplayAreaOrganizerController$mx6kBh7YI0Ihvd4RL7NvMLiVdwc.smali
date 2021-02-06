.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$mx6kBh7YI0Ihvd4RL7NvMLiVdwc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/window/IDisplayAreaOrganizer;


# direct methods
.method public synthetic constructor <init>(ILandroid/window/IDisplayAreaOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$mx6kBh7YI0Ihvd4RL7NvMLiVdwc;->f$0:I

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$mx6kBh7YI0Ihvd4RL7NvMLiVdwc;->f$1:Landroid/window/IDisplayAreaOrganizer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$mx6kBh7YI0Ihvd4RL7NvMLiVdwc;->f$0:I

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$mx6kBh7YI0Ihvd4RL7NvMLiVdwc;->f$1:Landroid/window/IDisplayAreaOrganizer;

    check-cast p1, Lcom/android/server/wm/DisplayArea;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->lambda$registerOrganizer$0(ILandroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    return-void
.end method
