.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$w9ep5dwa3CsKsu0rpKSQwF-60A4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$w9ep5dwa3CsKsu0rpKSQwF-60A4;->f$0:I

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$w9ep5dwa3CsKsu0rpKSQwF-60A4;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$w9ep5dwa3CsKsu0rpKSQwF-60A4;->f$0:I

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$w9ep5dwa3CsKsu0rpKSQwF-60A4;->f$1:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/DisplayContent;->lambda$updateSystemUiVisibility$21(IILcom/android/server/wm/WindowState;)V

    return-void
.end method
