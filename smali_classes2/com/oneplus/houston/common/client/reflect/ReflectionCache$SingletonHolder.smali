.class Lcom/oneplus/houston/common/client/reflect/ReflectionCache$SingletonHolder;
.super Ljava/lang/Object;
.source "ReflectionCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/common/client/reflect/ReflectionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/oneplus/houston/common/client/reflect/ReflectionCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;-><init>(Lcom/oneplus/houston/common/client/reflect/ReflectionCache$1;)V

    sput-object v0, Lcom/oneplus/houston/common/client/reflect/ReflectionCache$SingletonHolder;->INSTANCE:Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;
    .locals 1

    .line 35
    sget-object v0, Lcom/oneplus/houston/common/client/reflect/ReflectionCache$SingletonHolder;->INSTANCE:Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    return-object v0
.end method
