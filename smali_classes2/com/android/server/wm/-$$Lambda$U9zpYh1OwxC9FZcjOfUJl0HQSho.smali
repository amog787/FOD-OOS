.class public final synthetic Lcom/android/server/wm/-$$Lambda$U9zpYh1OwxC9FZcjOfUJl0HQSho;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$U9zpYh1OwxC9FZcjOfUJl0HQSho;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$U9zpYh1OwxC9FZcjOfUJl0HQSho;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$U9zpYh1OwxC9FZcjOfUJl0HQSho;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$U9zpYh1OwxC9FZcjOfUJl0HQSho;->INSTANCE:Lcom/android/server/wm/-$$Lambda$U9zpYh1OwxC9FZcjOfUJl0HQSho;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Ljava/lang/String;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/wm/ActivityRecord;->finishIfSubActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    return-void
.end method
