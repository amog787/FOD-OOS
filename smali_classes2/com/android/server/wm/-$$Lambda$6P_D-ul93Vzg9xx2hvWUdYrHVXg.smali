.class public final synthetic Lcom/android/server/wm/-$$Lambda$6P_D-ul93Vzg9xx2hvWUdYrHVXg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$6P_D-ul93Vzg9xx2hvWUdYrHVXg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$6P_D-ul93Vzg9xx2hvWUdYrHVXg;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$6P_D-ul93Vzg9xx2hvWUdYrHVXg;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$6P_D-ul93Vzg9xx2hvWUdYrHVXg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$6P_D-ul93Vzg9xx2hvWUdYrHVXg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    return-object v0
.end method
