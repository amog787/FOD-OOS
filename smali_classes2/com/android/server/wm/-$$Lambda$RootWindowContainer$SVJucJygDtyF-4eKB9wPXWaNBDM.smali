.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$SVJucJygDtyF-4eKB9wPXWaNBDM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$SVJucJygDtyF-4eKB9wPXWaNBDM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$SVJucJygDtyF-4eKB9wPXWaNBDM;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$SVJucJygDtyF-4eKB9wPXWaNBDM;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$SVJucJygDtyF-4eKB9wPXWaNBDM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$SVJucJygDtyF-4eKB9wPXWaNBDM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/RootWindowContainer;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$SVJucJygDtyF-4eKB9wPXWaNBDM(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
