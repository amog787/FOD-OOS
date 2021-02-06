.class public final synthetic Lcom/android/server/wm/-$$Lambda$B16jdo1lKUkQ4B7iWXwPKs2MAdg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$B16jdo1lKUkQ4B7iWXwPKs2MAdg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$B16jdo1lKUkQ4B7iWXwPKs2MAdg;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$B16jdo1lKUkQ4B7iWXwPKs2MAdg;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$B16jdo1lKUkQ4B7iWXwPKs2MAdg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$B16jdo1lKUkQ4B7iWXwPKs2MAdg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeLaunchTickRunnable()V

    return-void
.end method
