.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$nRbzpv86yu_hPtn9WaGp64X2Pt0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/window/IDisplayAreaOrganizer;


# direct methods
.method public synthetic constructor <init>(Landroid/window/IDisplayAreaOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$nRbzpv86yu_hPtn9WaGp64X2Pt0;->f$0:Landroid/window/IDisplayAreaOrganizer;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayAreaOrganizerController$nRbzpv86yu_hPtn9WaGp64X2Pt0;->f$0:Landroid/window/IDisplayAreaOrganizer;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->lambda$unregisterOrganizer$1(Landroid/window/IDisplayAreaOrganizer;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
