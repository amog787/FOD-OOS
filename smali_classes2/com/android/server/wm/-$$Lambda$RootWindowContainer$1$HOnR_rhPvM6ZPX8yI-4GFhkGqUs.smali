.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$1$HOnR_rhPvM6ZPX8yI-4GFhkGqUs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$1$HOnR_rhPvM6ZPX8yI-4GFhkGqUs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$1$HOnR_rhPvM6ZPX8yI-4GFhkGqUs;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$1$HOnR_rhPvM6ZPX8yI-4GFhkGqUs;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$1$HOnR_rhPvM6ZPX8yI-4GFhkGqUs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$1$HOnR_rhPvM6ZPX8yI-4GFhkGqUs;

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

    invoke-static {p1, p2}, Lcom/android/server/wm/RootWindowContainer$1;->lambda$run$0(Ljava/lang/Object;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
