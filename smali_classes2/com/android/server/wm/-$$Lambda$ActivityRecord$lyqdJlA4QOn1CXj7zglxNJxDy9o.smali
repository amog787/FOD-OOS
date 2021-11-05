.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityRecord$lyqdJlA4QOn1CXj7zglxNJxDy9o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$lyqdJlA4QOn1CXj7zglxNJxDy9o;->f$0:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$lyqdJlA4QOn1CXj7zglxNJxDy9o;->f$0:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->lambda$layoutLetterbox$2$ActivityRecord()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method
