.class public Lcom/oneplus/houston/common/client/reflect/ReflectionCache;
.super Ljava/lang/Object;
.source "ReflectionCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/houston/common/client/reflect/ReflectionCache$SingletonHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_REFLECTINON_CACHE_SIZE:I = 0x400

.field public static final TAG:Ljava/lang/String; = "ReflectionCache"

.field public static classInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/houston/common/client/reflect/ClassInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClassInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/oneplus/houston/common/client/reflect/ClassInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->classInfoMap:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->mClassInfoCache:Ljava/util/Map;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/houston/common/client/reflect/ReflectionCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/houston/common/client/reflect/ReflectionCache$1;

    .line 23
    invoke-direct {p0}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;-><init>()V

    return-void
.end method

.method public static final build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;
    .locals 1

    .line 41
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache$SingletonHolder;->access$100()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "isDeclared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 152
    .local p0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "getCachedField "

    const-string v1, "ReflectionCache"

    const/4 v2, 0x0

    .line 154
    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 155
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v3

    invoke-virtual {v3, p0, p1, p2}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 160
    :goto_0
    goto :goto_1

    .line 158
    :catch_0
    move-exception v3

    .line 159
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 156
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    .line 157
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 161
    :goto_1
    return-object v2
.end method

.method public static varargs getCachedMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "isDeclared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 139
    .local p0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v0, "getCachedMethod "

    const-string v1, "ReflectionCache"

    const/4 v2, 0x0

    .line 141
    .local v2, "b":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Class;

    .line 142
    invoke-static {}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->build()Lcom/oneplus/houston/common/client/reflect/ReflectionCache;

    move-result-object v3

    invoke-virtual {v3, p0, p1, p2, p3}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 147
    :goto_0
    goto :goto_1

    .line 145
    :catch_0
    move-exception v3

    .line 146
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 148
    :goto_1
    return-object v2
.end method

.method private getClassInfoFromCache(Ljava/lang/String;)Lcom/oneplus/houston/common/client/reflect/ClassInfo;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->classInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/common/client/reflect/ClassInfo;

    return-object v0
.end method

.method private putClassInfoToCache(Ljava/lang/String;Lcom/oneplus/houston/common/client/reflect/ClassInfo;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "classInfo"    # Lcom/oneplus/houston/common/client/reflect/ClassInfo;

    .line 45
    sget-object v0, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->classInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method public forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->forName(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public forName(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Class;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "isCached"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 57
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-direct {p0, p1}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getClassInfoFromCache(Ljava/lang/String;)Lcom/oneplus/houston/common/client/reflect/ClassInfo;

    move-result-object v0

    .line 59
    .local v0, "classInfoFromCache":Lcom/oneplus/houston/common/client/reflect/ClassInfo;
    if-eqz v0, :cond_0

    .line 60
    iget-object v1, v0, Lcom/oneplus/houston/common/client/reflect/ClassInfo;->mClass:Ljava/lang/Class;

    return-object v1

    .line 62
    :cond_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 63
    .local v1, "c":Ljava/lang/Class;
    new-instance v2, Lcom/oneplus/houston/common/client/reflect/ClassInfo;

    invoke-direct {v2, v1, p1}, Lcom/oneplus/houston/common/client/reflect/ClassInfo;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 64
    .local v2, "classInfo":Lcom/oneplus/houston/common/client/reflect/ClassInfo;
    invoke-direct {p0, p1, v2}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->putClassInfoToCache(Ljava/lang/String;Lcom/oneplus/houston/common/client/reflect/ClassInfo;)V

    .line 65
    return-object v1

    .line 68
    .end local v0    # "classInfoFromCache":Lcom/oneplus/houston/common/client/reflect/ClassInfo;
    .end local v1    # "c":Ljava/lang/Class;
    .end local v2    # "classInfo":Lcom/oneplus/houston/common/client/reflect/ClassInfo;
    :cond_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 4
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "isDeclared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 107
    .local p1, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getClassInfoFromCache(Ljava/lang/String;)Lcom/oneplus/houston/common/client/reflect/ClassInfo;

    move-result-object v0

    .line 108
    .local v0, "classInfoFromCache":Lcom/oneplus/houston/common/client/reflect/ClassInfo;
    const/4 v1, 0x0

    .line 109
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {v0, p2}, Lcom/oneplus/houston/common/client/reflect/ClassInfo;->getCachedField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 111
    .local v2, "fieldFromCache":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 112
    move-object v1, v2

    goto :goto_1

    .line 114
    :cond_0
    if-nez p3, :cond_1

    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 118
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 120
    :goto_0
    invoke-virtual {v0, p2, v1}, Lcom/oneplus/houston/common/client/reflect/ClassInfo;->addCachedField(Ljava/lang/String;Ljava/lang/reflect/Field;)V

    .line 122
    .end local v2    # "fieldFromCache":Ljava/lang/reflect/Field;
    :goto_1
    goto :goto_2

    .line 123
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 125
    :goto_2
    return-object v1
.end method

.method public varargs getMethod(Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "isDeclared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 75
    .local p1, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/houston/common/client/reflect/ReflectionCache;->getClassInfoFromCache(Ljava/lang/String;)Lcom/oneplus/houston/common/client/reflect/ClassInfo;

    move-result-object v0

    .line 76
    .local v0, "classInfoFromCache":Lcom/oneplus/houston/common/client/reflect/ClassInfo;
    move-object v1, p2

    .line 77
    .local v1, "methodKey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 78
    .local v2, "method":Ljava/lang/reflect/Method;
    array-length v3, p4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p4, v4

    .line 79
    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :cond_0
    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 82
    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/reflect/ClassInfo;->getCachedMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 83
    .local v4, "methodFromCache":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_1

    .line 84
    move-object v2, v4

    goto :goto_2

    .line 86
    :cond_1
    if-nez p3, :cond_2

    .line 87
    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 92
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/oneplus/houston/common/client/reflect/ClassInfo;->addCachedMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 94
    .end local v4    # "methodFromCache":Ljava/lang/reflect/Method;
    :goto_2
    goto :goto_3

    .line 95
    :cond_3
    if-nez p3, :cond_4

    .line 96
    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_3

    .line 98
    :cond_4
    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 102
    :goto_3
    return-object v2
.end method
