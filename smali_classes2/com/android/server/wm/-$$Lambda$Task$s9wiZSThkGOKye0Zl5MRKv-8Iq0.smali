.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$s9wiZSThkGOKye0Zl5MRKv-8Iq0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$s9wiZSThkGOKye0Zl5MRKv-8Iq0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$s9wiZSThkGOKye0Zl5MRKv-8Iq0;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$Task$s9wiZSThkGOKye0Zl5MRKv-8Iq0;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$Task$s9wiZSThkGOKye0Zl5MRKv-8Iq0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$s9wiZSThkGOKye0Zl5MRKv-8Iq0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/Task;->lambda$getTopFullscreenActivity$7(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
