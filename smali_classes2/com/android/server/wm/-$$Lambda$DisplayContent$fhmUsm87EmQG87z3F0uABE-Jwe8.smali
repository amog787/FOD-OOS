.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$fhmUsm87EmQG87z3F0uABE-Jwe8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:[I

.field private final synthetic f$1:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>([ILandroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$fhmUsm87EmQG87z3F0uABE-Jwe8;->f$0:[I

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$fhmUsm87EmQG87z3F0uABE-Jwe8;->f$1:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$fhmUsm87EmQG87z3F0uABE-Jwe8;->f$0:[I

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$fhmUsm87EmQG87z3F0uABE-Jwe8;->f$1:Landroid/graphics/Region;

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/DisplayContent;->lambda$addToGlobalAndConsumeLimit$27([ILandroid/graphics/Region;Landroid/graphics/Rect;)V

    return-void
.end method
