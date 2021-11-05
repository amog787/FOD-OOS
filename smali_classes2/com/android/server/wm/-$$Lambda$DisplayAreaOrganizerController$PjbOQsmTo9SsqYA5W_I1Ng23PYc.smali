.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$PjbOQsmTo9SsqYA5W_I1Ng23PYc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/IDisplayAreaOrganizer;


# direct methods
.method public synthetic constructor <init>(Landroid/window/IDisplayAreaOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$PjbOQsmTo9SsqYA5W_I1Ng23PYc;->f$0:Landroid/window/IDisplayAreaOrganizer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$PjbOQsmTo9SsqYA5W_I1Ng23PYc;->f$0:Landroid/window/IDisplayAreaOrganizer;

    check-cast p1, Lcom/android/server/wm/DisplayArea;

    invoke-static {v0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->lambda$unregisterOrganizer$2(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    return-void
.end method
