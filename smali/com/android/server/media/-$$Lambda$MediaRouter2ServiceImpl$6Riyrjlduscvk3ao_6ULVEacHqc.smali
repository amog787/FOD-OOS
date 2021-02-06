.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$6Riyrjlduscvk3ao_6ULVEacHqc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$6Riyrjlduscvk3ao_6ULVEacHqc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$6Riyrjlduscvk3ao_6ULVEacHqc;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$6Riyrjlduscvk3ao_6ULVEacHqc;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$6Riyrjlduscvk3ao_6ULVEacHqc;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$6Riyrjlduscvk3ao_6ULVEacHqc;

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

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$switchUser$0(Ljava/lang/Object;)V

    return-void
.end method
