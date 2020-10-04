.class public Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;
.super Ljava/lang/Object;
.source "ReflectCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/common/client/reflect/ReflectCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reflect"
.end annotation


# instance fields
.field private final mMethod:Ljava/lang/reflect/Method;

.field private final mObject:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mObject:Ljava/lang/Object;

    .line 113
    iput-object p2, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mMethod:Ljava/lang/reflect/Method;

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/oneplus/houston/common/client/reflect/ReflectCache$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/reflect/Method;
    .param p3, "x2"    # Lcom/oneplus/houston/common/client/reflect/ReflectCache$1;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public hasMethod(Ljava/lang/String;)Z
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "hasmethod":Z
    iget-object v1, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 139
    :cond_0
    return v0
.end method

.method public varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 119
    return-object v1

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_2

    .line 125
    iget-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-object v1

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/oneplus/houston/common/client/reflect/ReflectCache$Reflect;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
