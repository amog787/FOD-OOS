.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppWindowToken$nF85SgNnIhRmVDk5ZRCmd3hL2jU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/AppWindowToken;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppWindowToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$nF85SgNnIhRmVDk5ZRCmd3hL2jU;->f$0:Lcom/android/server/wm/AppWindowToken;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$nF85SgNnIhRmVDk5ZRCmd3hL2jU;->f$0:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->lambda$layoutLetterbox$2$AppWindowToken()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method
