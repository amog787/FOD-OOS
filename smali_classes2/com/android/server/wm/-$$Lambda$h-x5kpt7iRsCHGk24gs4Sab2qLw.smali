.class public final synthetic Lcom/android/server/wm/-$$Lambda$h-x5kpt7iRsCHGk24gs4Sab2qLw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$h-x5kpt7iRsCHGk24gs4Sab2qLw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$h-x5kpt7iRsCHGk24gs4Sab2qLw;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$h-x5kpt7iRsCHGk24gs4Sab2qLw;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$h-x5kpt7iRsCHGk24gs4Sab2qLw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$h-x5kpt7iRsCHGk24gs4Sab2qLw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method
