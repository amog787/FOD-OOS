.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field private final synthetic f$1:Landroid/graphics/Region;

.field private final synthetic f$2:Landroid/graphics/Region;

.field private final synthetic f$3:Landroid/graphics/Region;

.field private final synthetic f$4:[I

.field private final synthetic f$5:Landroid/graphics/Region;

.field private final synthetic f$6:Landroid/graphics/Rect;

.field private final synthetic f$7:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;->f$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;->f$1:Landroid/graphics/Region;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;->f$2:Landroid/graphics/Region;

    iput-object p4, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;->f$3:Landroid/graphics/Region;

    iput-object p5, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;->f$4:[I

    iput-object p6, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;->f$5:Landroid/graphics/Region;

    iput-object p7, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;->f$6:Landroid/graphics/Rect;

    iput-object p8, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;->f$7:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;->f$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;->f$1:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;->f$2:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;->f$3:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;->f$4:[I

    iget-object v5, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;->f$5:Landroid/graphics/Region;

    iget-object v6, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;->f$6:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$gsQrhBQL3vGbqvwErNuLHyt9FU4;->f$7:Landroid/graphics/Rect;

    move-object v8, p1

    check-cast v8, Lcom/android/server/wm/WindowState;

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/DisplayContent;->lambda$calculateSystemGestureExclusion$26$DisplayContent(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
